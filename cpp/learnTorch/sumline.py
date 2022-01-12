import os
import subprocess

def file_wc_count(file_name):
    import subprocess
    out = subprocess.getoutput("wc -l %s" % file_name)
    return int(out.split()[0])

def get_file_suffix(file_name):
    if '.' in file_name:
        point_index = file_name.rfind('.')
        file_suffix = file_name[point_index:]
        return file_suffix
    else:
        return None

if __name__ == '__main__':
    out = subprocess.getoutput("wc -l %s" % "sumline.py")
    print(os.listdir())
    os_walk_list = list(os.walk('.'))

    target_files = []
    target_suffix = ['.py','.h','.cpp','.c']
    defalut_value_list = [0] * len(target_suffix)
    suffix_wc_line_count_dict = dict(zip(target_suffix, defalut_value_list))
    target_line_sum = dict()
    for cur_dir,sub_dir,cur_files in os_walk_list:
        if '/.' in cur_dir or 'build' in cur_dir or 'venv' in cur_dir:
            print('hidden dir is',cur_dir)
            continue
        for file in cur_files:
            file_suffix = get_file_suffix(file)
            if file_suffix in target_suffix:
                relative_file_name = os.path.join(cur_dir, file)
                target_files.append(relative_file_name)

    print(target_files)
    for file_name in target_files:
        file_suffix = get_file_suffix(file_name)
        if file_suffix in target_suffix:
            file_wc = file_wc_count(file_name)
            print(file_name, file_wc_count(file_name))
            suffix_wc_line_count_dict[file_suffix] += file_wc

    print(suffix_wc_line_count_dict)